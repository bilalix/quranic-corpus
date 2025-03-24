import { BASE_URL } from './config';

export abstract class ApiBase {
    protected url(path: string): string {
        return `${BASE_URL}${path}`;
    }
}