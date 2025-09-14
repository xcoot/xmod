.class public final synthetic Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda5;
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
    iput p1, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

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
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/android/server/policy/KeyCombinationManager;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_0
    const/4 v0, 0x1

    .line 20
    const/4 v1, 0x0

    .line 21
    move v2, v1

    .line 22
    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownKeyEvent:Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const-string v4, "KeyCombinationManager"

    .line 29
    .line 30
    if-ge v2, v3, :cond_5

    .line 31
    .line 32
    iget-object v3, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownKeyEvent:Landroid/util/SparseArray;

    .line 33
    .line 34
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Landroid/view/KeyEvent;

    .line 39
    .line 40
    if-nez v3, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {v3}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    if-eqz v5, :cond_4

    .line 48
    .line 49
    invoke-virtual {v5}, Landroid/view/InputDevice;->isExternal()Z

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-nez v6, :cond_4

    .line 54
    .line 55
    invoke-virtual {v5}, Landroid/view/InputDevice;->isVirtual()Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    invoke-virtual {v3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    iget-object v5, p0, Lcom/android/server/policy/KeyCombinationManager;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    .line 67
    .line 68
    const/4 v6, -0x1

    .line 69
    if-eqz v5, :cond_3

    .line 70
    .line 71
    iget-object v5, v5, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    .line 72
    .line 73
    iget-object v5, v5, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 74
    .line 75
    const/16 v7, -0x100

    .line 76
    .line 77
    invoke-interface {v5, v6, v7, v3}, Lcom/android/server/input/NativeInputManagerService;->getKeyCodeState(III)I

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    :cond_3
    const-string/jumbo v5, "mResetKeyDownTimesRunnable keyCode="

    .line 82
    .line 83
    .line 84
    const-string v7, " state="

    .line 85
    .line 86
    invoke-static {v3, v6, v5, v7, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    if-lez v6, :cond_4

    .line 90
    .line 91
    move v0, v1

    .line 92
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_5
    if-eqz v0, :cond_6

    .line 96
    .line 97
    const-string v0, "Reset keyDownTimes clear"

    .line 98
    .line 99
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    iget-object p0, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownKeyEvent:Landroid/util/SparseArray;

    .line 103
    .line 104
    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 105
    .line 106
    .line 107
    :cond_6
    :goto_2
    return-void

    .line 108
    :pswitch_0
    check-cast p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->execute()V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :pswitch_1
    check-cast p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->cancel()V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
