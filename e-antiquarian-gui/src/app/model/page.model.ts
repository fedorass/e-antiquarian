
export class Page<T> {
    
    content?: Array<T>;

    totalPages: number = 0;
    numberOfElements: number = 0;
    
    first: boolean;
    number: number;
}