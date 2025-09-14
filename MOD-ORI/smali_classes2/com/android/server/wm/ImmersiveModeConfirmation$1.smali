.class public final Lcom/android/server/wm/ImmersiveModeConfirmation$1;
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
    iput p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$1;->this$0:Ljava/lang/Object;

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
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$1;->this$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$1;->this$0:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const v2, 0x10501d5

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    const/4 v2, -0x2

    .line 47
    const/16 v3, 0x31

    .line 48
    .line 49
    invoke-direct {v1, p0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void

    .line 56
    :pswitch_0
    sget-boolean v0, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    .line 57
    .line 58
    if-nez v0, :cond_1

    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    sput-boolean v0, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    .line 62
    .line 63
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$1;->this$0:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v0, Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 66
    .line 67
    iget-object v0, v0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    :try_start_0
    const-string v1, "confirmed"

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const-string v2, "immersive_mode_confirmations"

    .line 76
    .line 77
    const/4 v3, -0x2

    .line 78
    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v2, "Error saving confirmations, sConfirmed="

    .line 86
    .line 87
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    sget-boolean v2, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    .line 91
    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    const-string v2, "ImmersiveModeConfirmation"

    .line 100
    .line 101
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    .line 103
    .line 104
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$1;->this$0:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast p0, Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->handleHide()V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    nop

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
