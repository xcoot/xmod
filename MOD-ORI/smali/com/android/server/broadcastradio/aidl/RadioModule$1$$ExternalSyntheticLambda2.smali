.class public final synthetic Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/broadcastradio/aidl/RadioModule$1;

.field public final synthetic f$1:Landroid/hardware/broadcastradio/ProgramSelector;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/broadcastradio/aidl/RadioModule$1;Landroid/hardware/broadcastradio/ProgramSelector;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/broadcastradio/aidl/RadioModule$1;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda2;->f$1:Landroid/hardware/broadcastradio/ProgramSelector;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda2;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/broadcastradio/aidl/RadioModule$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda2;->f$1:Landroid/hardware/broadcastradio/ProgramSelector;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda2;->f$2:I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->programSelectorFromHalProgramSelector(Landroid/hardware/broadcastradio/ProgramSelector;)Landroid/hardware/radio/ProgramSelector;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    packed-switch p0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x7

    .line 18
    goto :goto_0

    .line 19
    :pswitch_0
    const/4 p0, 0x6

    .line 20
    goto :goto_0

    .line 21
    :pswitch_1
    const/4 p0, 0x5

    .line 22
    goto :goto_0

    .line 23
    :pswitch_2
    const/4 p0, 0x4

    .line 24
    goto :goto_0

    .line 25
    :pswitch_3
    const/4 p0, 0x3

    .line 26
    goto :goto_0

    .line 27
    :pswitch_4
    const/4 p0, 0x2

    .line 28
    goto :goto_0

    .line 29
    :pswitch_5
    const/4 p0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :pswitch_6
    const/4 p0, 0x0

    .line 32
    :goto_0
    iget-object v2, v0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    .line 33
    .line 34
    iget-object v2, v2, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLock:Ljava/lang/Object;

    .line 35
    .line 36
    monitor-enter v2

    .line 37
    :try_start_0
    iget-object v0, v0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    .line 38
    .line 39
    new-instance v3, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda10;

    .line 40
    .line 41
    invoke-direct {v3, p0, v1}, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda10;-><init>(ILandroid/hardware/radio/ProgramSelector;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v3}, Lcom/android/server/broadcastradio/aidl/RadioModule;->fanoutAidlCallbackLocked(Lcom/android/server/broadcastradio/aidl/RadioModule$AidlCallbackRunnable;)V

    .line 45
    .line 46
    .line 47
    monitor-exit v2

    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
