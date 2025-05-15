import { render, screen } from '@testing-library/react';
import UploadPage from '../pages/UploadPage';

test('renders upload button', () => {
  render(<UploadPage />);
  expect(screen.getByText('Upload')).toBeInTheDocument();
});
