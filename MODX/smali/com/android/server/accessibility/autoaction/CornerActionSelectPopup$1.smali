.class public final Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup$1;->this$0:Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    const-string p1, "android.intent.action.SCREEN_OFF"

    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 13
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup$1;->this$0:Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;

    .line 15
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mPopup:Landroid/widget/PopupMenu;

    .line 17
    if-eqz p0, :cond_0

    .line 19
    invoke-virtual {p0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 22
    :cond_0
    return-void
.end method
