.class public final synthetic Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/content/SyncManager;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/content/SyncManager;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/content/SyncManager;

    .line 5
    iput p2, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda3;->f$1:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/content/SyncManager;

    .line 8
    iget p0, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda3;->f$1:I

    .line 10
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object p0

    .line 14
    const-string/jumbo v1, "onUnlockUser: user="

    .line 17
    filled-new-array {v1, p0}, [Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 21
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 23
    invoke-virtual {v0, p0}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 26
    return-void

    .line 27
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/content/SyncManager;

    .line 29
    iget p0, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda3;->f$1:I

    .line 31
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object p0

    .line 35
    const-string/jumbo v1, "onStopUser: user="

    .line 38
    filled-new-array {v1, p0}, [Ljava/lang/Object;

    .line 41
    move-result-object p0

    .line 42
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 44
    invoke-virtual {v0, p0}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 47
    return-void

    .line 48
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/content/SyncManager;

    .line 50
    iget p0, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda3;->f$1:I

    .line 52
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    move-result-object p0

    .line 56
    const-string/jumbo v1, "onStartUser: user="

    .line 59
    filled-new-array {v1, p0}, [Ljava/lang/Object;

    .line 62
    move-result-object p0

    .line 63
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 65
    invoke-virtual {v0, p0}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 68
    return-void

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
