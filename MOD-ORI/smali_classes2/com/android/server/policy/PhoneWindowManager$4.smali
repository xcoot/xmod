.class public final Lcom/android/server/policy/PhoneWindowManager$4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager$4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager$4;->this$0:Ljava/lang/Object;

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
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$4;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$4;->this$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    .line 9
    .line 10
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mPendingHomeKeyEvent:Landroid/view/KeyEvent;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 15
    .line 16
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->handleShortPressOnHome(Landroid/view/KeyEvent;)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$4;->this$0:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mPendingHomeKeyEvent:Landroid/view/KeyEvent;

    .line 27
    .line 28
    :cond_0
    return-void

    .line 29
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$4;->this$0:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$4;->this$0:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    const-string v2, "End Call - Long Press - Show Global Actions"

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2, v1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;Z)Z

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$4;->this$0:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p0, Lcom/android/server/policy/PhoneWindowManager;

    .line 49
    .line 50
    const/4 v0, -0x1

    .line 51
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal(I)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
