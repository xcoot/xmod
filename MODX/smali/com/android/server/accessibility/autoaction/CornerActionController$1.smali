.class public final Lcom/android/server/accessibility/autoaction/CornerActionController$1;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/autoaction/CornerActionController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoaction/CornerActionController;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController$1;->this$0:Lcom/android/server/accessibility/autoaction/CornerActionController;

    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController$1;->this$0:Lcom/android/server/accessibility/autoaction/CornerActionController;

    .line 3
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContentResolver:Landroid/content/ContentResolver;

    .line 5
    const-string v0, "accessibility_corner_actions"

    .line 7
    iget v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mUserId:I

    .line 9
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 15
    const-string v0, ":"

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mCornerActions:[Ljava/lang/String;

    .line 23
    :cond_0
    return-void
.end method
