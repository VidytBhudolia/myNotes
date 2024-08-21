class CloudStorageException implements Exception {
  CloudStorageException();
}

//C in CRUD
class CouldNotCreateNoteException implements CloudStorageException {}

//R in CRUD
class CouldNotGetAllNoteException implements CloudStorageException {}

//U in CRUD
class CouldNotUpdateNoteException implements CloudStorageException {}

//D in CRUD
class CouldNotDeleteNoteException implements CloudStorageException {}
