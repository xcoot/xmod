.class public final Lcom/android/server/input/StickyModifierStateController$StickyModifierStateListenerRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mListener:Landroid/hardware/input/IStickyModifierStateListener;

.field public final mPid:I

.field public final synthetic this$0:Lcom/android/server/input/StickyModifierStateController;


# direct methods
.method public constructor <init>(Lcom/android/server/input/StickyModifierStateController;ILandroid/hardware/input/IStickyModifierStateListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/input/StickyModifierStateController$StickyModifierStateListenerRecord;->this$0:Lcom/android/server/input/StickyModifierStateController;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/input/StickyModifierStateController$StickyModifierStateListenerRecord;->mPid:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/input/StickyModifierStateController$StickyModifierStateListenerRecord;->mListener:Landroid/hardware/input/IStickyModifierStateListener;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/input/StickyModifierStateController;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "ModifierStateController"

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "Sticky modifier state listener for pid "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget v2, p0, Lcom/android/server/input/StickyModifierStateController$StickyModifierStateListenerRecord;->mPid:I

    .line 15
    .line 16
    const-string v3, " died."

    .line 17
    .line 18
    invoke-static {v1, v2, v3, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/StickyModifierStateController$StickyModifierStateListenerRecord;->this$0:Lcom/android/server/input/StickyModifierStateController;

    .line 22
    .line 23
    iget p0, p0, Lcom/android/server/input/StickyModifierStateController$StickyModifierStateListenerRecord;->mPid:I

    .line 24
    .line 25
    iget-object v1, v0, Lcom/android/server/input/StickyModifierStateController;->mStickyModifierStateListenerRecords:Landroid/util/SparseArray;

    .line 26
    .line 27
    monitor-enter v1

    .line 28
    :try_start_0
    iget-object v0, v0, Lcom/android/server/input/StickyModifierStateController;->mStickyModifierStateListenerRecords:Landroid/util/SparseArray;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 31
    .line 32
    .line 33
    monitor-exit v1

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0
.end method
