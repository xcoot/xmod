.class public final synthetic Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/broadcastradio/hal2/RadioModule$1;

.field public final synthetic f$1:Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/broadcastradio/hal2/RadioModule$1;Landroid/hardware/broadcastradio/V2_0/ProgramSelector;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/broadcastradio/hal2/RadioModule$1;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda3;->f$1:Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda3;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/broadcastradio/hal2/RadioModule$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda3;->f$1:Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda3;->f$2:I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/Convert;->programSelectorFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramSelector;)Landroid/hardware/radio/ProgramSelector;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz p0, :cond_2

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    if-eq p0, v2, :cond_1

    .line 18
    .line 19
    const/4 v3, 0x3

    .line 20
    if-eq p0, v3, :cond_3

    .line 21
    .line 22
    const/4 v2, 0x4

    .line 23
    if-eq p0, v2, :cond_0

    .line 24
    .line 25
    const/4 v3, 0x5

    .line 26
    if-eq p0, v3, :cond_3

    .line 27
    .line 28
    const/4 v2, 0x6

    .line 29
    if-eq p0, v2, :cond_0

    .line 30
    .line 31
    const/4 v2, 0x7

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v2, v3

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v2, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const/4 v2, 0x0

    .line 38
    :cond_3
    :goto_0
    iget-object p0, v0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Lcom/android/server/broadcastradio/hal2/RadioModule;

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mLock:Ljava/lang/Object;

    .line 43
    .line 44
    monitor-enter p0

    .line 45
    :try_start_0
    iget-object v0, v0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Lcom/android/server/broadcastradio/hal2/RadioModule;

    .line 48
    .line 49
    new-instance v3, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda5;

    .line 50
    .line 51
    invoke-direct {v3, v2, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda5;-><init>(ILandroid/hardware/radio/ProgramSelector;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v3}, Lcom/android/server/broadcastradio/hal2/RadioModule;->fanoutAidlCallbackLocked(Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V

    .line 55
    .line 56
    .line 57
    monitor-exit p0

    .line 58
    return-void

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw v0
.end method
