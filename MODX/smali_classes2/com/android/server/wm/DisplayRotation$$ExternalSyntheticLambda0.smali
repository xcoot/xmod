.class public final synthetic Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/android/server/wm/DisplayRotation$FoldController;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation$FoldController;->updateSensorRotationBlockIfNeeded()V

    .line 16
    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0

    .line 23
    :pswitch_0
    check-cast p0, Lcom/android/server/wm/DisplayRotation$FoldController;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation;->mLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v0

    .line 30
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation$FoldController;->updateSensorRotationBlockIfNeeded()V

    .line 31
    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :catchall_1
    move-exception p0

    .line 36
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 37
    throw p0

    .line 38
    :pswitch_1
    check-cast p0, Lcom/android/server/wm/DisplayRotation;

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->updateRotationAndSendNewConfigIfChanged()Z

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
