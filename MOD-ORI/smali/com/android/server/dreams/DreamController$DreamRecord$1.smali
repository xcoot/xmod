.class public final Lcom/android/server/dreams/DreamController$DreamRecord$1;
.super Landroid/os/IRemoteCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$1:Lcom/android/server/dreams/DreamController$DreamRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/dreams/DreamController$DreamRecord;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/dreams/DreamController$DreamRecord$1;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

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
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/dreams/DreamController$DreamRecord$1;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/android/server/dreams/DreamController$DreamRecord;->mStopPreviousDreamsIfNeeded:Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord$1;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mReleaseWakeLockIfNeeded:Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;

    .line 19
    .line 20
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method
