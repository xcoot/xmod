.class public final Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;
.super Landroid/os/IProgressListener$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mTarget:Landroid/content/IntentSender;

.field public final synthetic this$0:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;Landroid/content/IntentSender;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/IProgressListener$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;->mTarget:Landroid/content/IntentSender;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onFinished(ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/pm/UserManagerService;->mHandler:Lcom/android/server/pm/UserManagerService$MainHandler;

    .line 4
    .line 5
    new-instance p2, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    invoke-direct {p2, p0}, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onProgress(IILandroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStarted(ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method
