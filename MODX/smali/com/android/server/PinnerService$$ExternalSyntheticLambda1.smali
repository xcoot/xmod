.class public final synthetic Lcom/android/server/PinnerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/PinnerService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget p0, p0, Lcom/android/server/PinnerService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 8
    check-cast p1, Lcom/android/server/PinnerService;

    .line 10
    check-cast p2, Ljava/lang/Integer;

    .line 12
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 15
    move-result p0

    .line 16
    sget p2, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    .line 18
    invoke-virtual {p1, p0, v1}, Lcom/android/server/PinnerService;->updateActiveState(IZ)V

    .line 21
    return-void

    .line 22
    :pswitch_0
    move-object p0, p1

    .line 23
    check-cast p0, Lcom/android/server/PinnerService;

    .line 25
    check-cast p2, Ljava/lang/Integer;

    .line 27
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 30
    move-result p1

    .line 31
    sget v1, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    .line 33
    invoke-virtual {p0, p1, v0}, Lcom/android/server/PinnerService;->updateActiveState(IZ)V

    .line 36
    monitor-enter p0

    .line 37
    :try_start_0
    iget-object p1, p0, Lcom/android/server/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    .line 39
    const/4 v1, -0x1

    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {p1, p2, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Ljava/lang/Integer;

    .line 50
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 53
    move-result p1

    .line 54
    if-ne p1, v1, :cond_0

    .line 56
    monitor-exit p0

    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    goto :goto_1

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    .line 62
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 69
    move-result p2

    .line 70
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/PinnerService;->pinApp(IIZ)V

    .line 73
    :goto_0
    return-void

    .line 74
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    throw p1

    .line 76
    :pswitch_1
    check-cast p1, Lcom/android/server/PinnerService;

    .line 78
    check-cast p2, Ljava/lang/Integer;

    .line 80
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 83
    move-result p0

    .line 84
    invoke-virtual {p1, p0, v1}, Lcom/android/server/PinnerService;->pinAppsInternal(IZ)V

    .line 87
    return-void

    .line 88
    :pswitch_2
    check-cast p1, Lcom/android/server/PinnerService;

    .line 90
    check-cast p2, Ljava/lang/Integer;

    .line 92
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 95
    move-result p0

    .line 96
    invoke-virtual {p1, p0, v0}, Lcom/android/server/PinnerService;->pinAppsInternal(IZ)V

    .line 99
    return-void

    .line 100
    nop

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
