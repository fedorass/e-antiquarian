import { Material } from './material.model';

export interface Country {
    
    id?: number;
    uuid: string;
    defaultName: string;
    isoCode: string;  
    materials: Material[];  
}