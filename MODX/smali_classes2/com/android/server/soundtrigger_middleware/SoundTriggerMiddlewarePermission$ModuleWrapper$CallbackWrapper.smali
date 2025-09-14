.class public final Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper$CallbackWrapper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;


# instance fields
.field public final mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

.field public final synthetic this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper$CallbackWrapper;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper$CallbackWrapper;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    .line 2
    .line 3
    invoke-interface {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->asBinder()Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final enforcePermissions(Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper$CallbackWrapper;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->mIsTrusted:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->mOriginatorIdentity:Landroid/media/permission/Identity;

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->enforcePermissionsForPreflight(Landroid/media/permission/Identity;)V

    .line 12
    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper;->mOriginatorIdentity:Landroid/media/permission/Identity;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    const-class v1, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;

    .line 29
    .line 30
    iget v4, p0, Landroid/media/permission/Identity;->uid:I

    .line 31
    .line 32
    iget-object v5, p0, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v6, p0, Landroid/media/permission/Identity;->attributionTag:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v1, v1, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;->this$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    .line 37
    .line 38
    iget-object v2, v1, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    const-string v3, "android.permission.RECORD_AUDIO"

    .line 41
    .line 42
    const/4 v7, -0x1

    .line 43
    invoke-static {v2, v3, v7, v4, v5}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    if-eqz v8, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget-object v1, v1, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    const-class v2, Landroid/app/AppOpsManager;

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    move-object v2, v1

    .line 59
    check-cast v2, Landroid/app/AppOpsManager;

    .line 60
    .line 61
    const/16 v3, 0x78

    .line 62
    .line 63
    move-object v7, p1

    .line 64
    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    :goto_0
    if-nez v8, :cond_3

    .line 68
    .line 69
    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;->mContext:Landroid/content/Context;

    .line 70
    .line 71
    const-string v1, "android.permission.CAPTURE_AUDIO_HOTWORD"

    .line 72
    .line 73
    invoke-static {v0, p0, v1, p1}, Landroid/media/permission/PermissionUtil;->checkPermissionForDataDelivery(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-nez p1, :cond_2

    .line 78
    .line 79
    :goto_1
    return-void

    .line 80
    :cond_2
    new-instance p1, Ljava/lang/SecurityException;

    .line 81
    .line 82
    invoke-static {p0}, Lcom/android/server/soundtrigger_middleware/ObjectPrinter;->print(Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    const-string v0, "Failed to obtain permission android.permission.CAPTURE_AUDIO_HOTWORD for identity "

    .line 87
    .line 88
    invoke-static {v0, p0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p1

    .line 96
    :cond_3
    new-instance p1, Ljava/lang/SecurityException;

    .line 97
    .line 98
    invoke-static {p0}, Lcom/android/server/soundtrigger_middleware/ObjectPrinter;->print(Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    const-string v0, "Failed to obtain permission RECORD_AUDIO for identity "

    .line 103
    .line 104
    invoke-static {v0, p0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p1
.end method

.method public final onModelUnloaded(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper$CallbackWrapper;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onModelUnloaded(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onModuleDied()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper$CallbackWrapper;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    .line 2
    .line 3
    invoke-interface {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onModuleDied()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onPhraseRecognition(ILandroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;I)V
    .locals 1

    .line 1
    const-string v0, "Sound trigger phrase recognition."

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper$CallbackWrapper;->enforcePermissions(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper$CallbackWrapper;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    .line 7
    .line 8
    invoke-interface {p0, p1, p2, p3}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onPhraseRecognition(ILandroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onRecognition(ILandroid/media/soundtrigger_middleware/RecognitionEventSys;I)V
    .locals 1

    .line 1
    const-string v0, "Sound trigger recognition."

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper$CallbackWrapper;->enforcePermissions(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper$CallbackWrapper;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    .line 7
    .line 8
    invoke-interface {p0, p1, p2, p3}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onRecognition(ILandroid/media/soundtrigger_middleware/RecognitionEventSys;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onResourcesAvailable()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper$CallbackWrapper;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    .line 2
    .line 3
    invoke-interface {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onResourcesAvailable()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission$ModuleWrapper$CallbackWrapper;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    .line 2
    .line 3
    invoke-interface {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
