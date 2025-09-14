.class public final Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2;
.super Landroid/os/IRemoteCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final sendResult(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 12
    .line 13
    new-instance v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    invoke-direct {v1, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2$$ExternalSyntheticLambda0;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 19
    .line 20
    iput-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mHotwordDetectionServiceProvider:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 23
    .line 24
    new-instance v1, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 27
    .line 28
    iget v2, v2, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractionServiceUid:I

    .line 29
    .line 30
    invoke-direct {v1, p1, v2}, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;-><init>(II)V

    .line 31
    .line 32
    .line 33
    iput-object v1, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mIdentity:Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$2;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 38
    .line 39
    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda7;

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    invoke-direct {v0, p1, v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda7;-><init>(II)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
