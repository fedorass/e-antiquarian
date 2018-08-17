import { Material } from './material.model';

export interface Country {
    
    uuid: string;
    defaultName: string;
    isoCode: string;  
    materials: Material[];  
}