.class public final Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup$2;->this$0:Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    const-string/jumbo v0, "usibi"

    .line 2
    .line 3
    .line 4
    const-string v1, "CornerActionSelectPopup show"

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup$2;->this$0:Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mPopup:Landroid/widget/PopupMenu;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/widget/PopupMenu;->show()V

    .line 14
    .line 15
    .line 16
    return-void
.end method
