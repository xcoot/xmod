.class public final Lcom/android/server/input/InputManagerService$8;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/input/InputManagerService$8;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$8;->this$0:Lcom/android/server/input/InputManagerService;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/input/InputManagerService$8;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$8;->this$0:Lcom/android/server/input/InputManagerService;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateFlowPointerDirectionSettings()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_0
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$8;->this$0:Lcom/android/server/input/InputManagerService;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateSetPenModeOnDex()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$8;->this$0:Lcom/android/server/input/InputManagerService;

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->updateMultiFingerTapBehavior(I)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_2
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$8;->this$0:Lcom/android/server/input/InputManagerService;

    .line 38
    .line 39
    const/4 p1, 0x4

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->updateMultiFingerTapBehavior(I)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :pswitch_3
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$8;->this$0:Lcom/android/server/input/InputManagerService;

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateFlowPointerSettings()V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
