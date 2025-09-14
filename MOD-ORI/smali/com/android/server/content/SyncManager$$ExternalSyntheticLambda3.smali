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

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/content/SyncManager;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda3;->f$1:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/content/SyncManager;

    .line 7
    .line 8
    iget p0, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda3;->f$1:I

    .line 9
    .line 10
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string/jumbo v1, "onUnlockUser: user="

    .line 15
    .line 16
    .line 17
    filled-new-array {v1, p0}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/content/SyncManager;

    .line 28
    .line 29
    iget p0, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda3;->f$1:I

    .line 30
    .line 31
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string/jumbo v1, "onStopUser: user="

    .line 36
    .line 37
    .line 38
    filled-new-array {v1, p0}, [Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 43
    .line 44
    invoke-virtual {v0, p0}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/content/SyncManager;

    .line 49
    .line 50
    iget p0, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda3;->f$1:I

    .line 51
    .line 52
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    const-string/jumbo v1, "onStartUser: user="

    .line 57
    .line 58
    .line 59
    filled-new-array {v1, p0}, [Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 64
    .line 65
    invoke-virtual {v0, p0}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
