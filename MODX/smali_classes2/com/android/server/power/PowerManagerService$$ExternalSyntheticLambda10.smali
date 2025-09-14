.class public final synthetic Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda10;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda10;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda10;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda10;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/android/server/power/PowerManagerService$1;

    .line 9
    .line 10
    check-cast p1, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-object p1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 19
    .line 20
    invoke-static {p0, p1, v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mdisableAbusiveWakeLockInternal(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;Z)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    check-cast p0, Lcom/android/server/power/PowerManagerService$1;

    .line 25
    .line 26
    check-cast p1, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    iget-object p1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 35
    .line 36
    invoke-static {p0, p1, v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mdisableAbusiveWakeLockInternal(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;Z)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_1
    check-cast p0, Lcom/android/server/power/PowerManagerService;

    .line 41
    .line 42
    check-cast p1, Lcom/android/server/power/PowerManagerService$HdrBrightnessLimitLock;

    .line 43
    .line 44
    sget-object v0, Lcom/android/server/power/PowerManagerService;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    iget v0, p1, Lcom/android/server/power/PowerManagerService$HdrBrightnessLimitLock;->mUpperLimit:I

    .line 50
    .line 51
    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessUpperLimit:I

    .line 52
    .line 53
    iget p1, p1, Lcom/android/server/power/PowerManagerService$HdrBrightnessLimitLock;->mBrightnessLimitPeriod:I

    .line 54
    .line 55
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessLimitPeriod:I

    .line 56
    .line 57
    return-void

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
