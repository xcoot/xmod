.class public final Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;
.super Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallbackWrapper:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper$CallbackWrapper;

.field public mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

.field public final mIsTrusted:Z

.field public final mOriginatorIdentity:Landroid/media/permission/Identity;

.field public final synthetic this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;Landroid/media/permission/Identity;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->mOriginatorIdentity:Landroid/media/permission/Identity;

    .line 7
    .line 8
    new-instance p1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper$CallbackWrapper;

    .line 9
    .line 10
    invoke-direct {p1, p0, p3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper$CallbackWrapper;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->mCallbackWrapper:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper$CallbackWrapper;

    .line 14
    .line 15
    iput-boolean p4, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->mIsTrusted:Z

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final detach()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    .line 2
    .line 3
    invoke-interface {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->detach()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final enforcePermissions()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->mOriginatorIdentity:Landroid/media/permission/Identity;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->enforcePermissionsForPreflight(Landroid/media/permission/Identity;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final forceRecognitionEvent(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->enforcePermissions()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    .line 5
    .line 6
    invoke-interface {p0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->forceRecognitionEvent(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final getModelParameter(II)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->enforcePermissions()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    .line 5
    .line 6
    invoke-interface {p0, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->getModelParameter(II)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final loadModel(Landroid/media/soundtrigger/SoundModel;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->enforcePermissions()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    .line 5
    .line 6
    invoke-interface {p0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->loadModel(Landroid/media/soundtrigger/SoundModel;)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final loadPhraseModel(Landroid/media/soundtrigger/PhraseSoundModel;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->enforcePermissions()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    .line 5
    .line 6
    invoke-interface {p0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->loadPhraseModel(Landroid/media/soundtrigger/PhraseSoundModel;)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final queryModelParameterSupport(II)Landroid/media/soundtrigger/ModelParameterRange;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->enforcePermissions()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    .line 5
    .line 6
    invoke-interface {p0, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->queryModelParameterSupport(II)Landroid/media/soundtrigger/ModelParameterRange;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final setModelParameter(III)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->enforcePermissions()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    .line 5
    .line 6
    invoke-interface {p0, p1, p2, p3}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->setModelParameter(III)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final startRecognition(ILandroid/media/soundtrigger/RecognitionConfig;)Landroid/os/IBinder;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->enforcePermissions()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    .line 5
    .line 6
    invoke-interface {p0, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->startRecognition(ILandroid/media/soundtrigger/RecognitionConfig;)Landroid/os/IBinder;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final stopRecognition(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->stopRecognition(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final unloadModel(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->unloadModel(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
