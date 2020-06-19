import torchvision.models as models
import torch.nn as nn
from torchvision import transforms
import os
from pathlib import Path
from PIL import Image
import torch
from torch.autograd import Variable


ROOTDIR="/home/pi/project_folder/mango"

label_dict = {
    0 : 'A',
    1 : 'B',
    2 : 'C'
}

def test():
    data_transform=transforms.Compose([
        transforms.Resize((224,224)),
        transforms.ToTensor(),
        transforms.Normalize(mean=[0.485,0.456,0.406],std=[0.229,0.224,0.225])
    ])

    classes = 3

    
    
    model_path = "/home/pi/project_folder/model-0.83-best_valid_acc.pth"
    model = torch.load(model_path, map_location=torch.device('cpu'))
    
    model.eval()
    
    for filename in os.listdir(ROOTDIR):
        
        image_path = Path(ROOTDIR).joinpath(filename)
	image =  Image.open(image_path).convert('RGB')
	image = data_transform(image).unsqueeze(0)
        
        inputs = Variable(image)
        outputs =  model(inputs)

        _,preds = torch.max(outputs.data,1)
        print(preds[0].item())
	print(filename + ' evaluation complete')


if __name__=='__main__':
    test()
