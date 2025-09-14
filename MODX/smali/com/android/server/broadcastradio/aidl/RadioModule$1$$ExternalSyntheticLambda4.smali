.class public final synthetic Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/broadcastradio/aidl/RadioModule$1;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/broadcastradio/aidl/RadioModule$1;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/broadcastradio/aidl/RadioModule$1;

    .line 6
    iput-boolean p2, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda4;->f$1:Z

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/broadcastradio/aidl/RadioModule$1;

    .line 3
    iget-boolean p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda4;->f$1:Z

    .line 5
    iget-object v1, v0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    .line 7
    iget-object v1, v1, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLock:Ljava/lang/Object;

    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v2, v0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    .line 12
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    move-result-object v3

    .line 16
    iput-object v3, v2, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAntennaConnected:Ljava/lang/Boolean;

    .line 18
    iget-object v0, v0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    .line 20
    new-instance v2, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda6;

    .line 22
    invoke-direct {v2, p0}, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda6;-><init>(Z)V

    .line 25
    invoke-virtual {v0, v2}, Lcom/android/server/broadcastradio/aidl/RadioModule;->fanoutAidlCallbackLocked(Lcom/android/server/broadcastradio/aidl/RadioModule$AidlCallbackRunnable;)V

    .line 28
    monitor-exit v1

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method
