.class public final Lcom/android/server/policy/PhoneWindowManagerExt$BackKeyRule;
.super Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManagerExt;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BackKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2
    .line 3
    const/4 p1, 0x4

    .line 4
    invoke-direct {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final onPress(JLandroid/view/KeyEvent;I)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getFlags()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/high16 p2, 0x10000000

    .line 6
    .line 7
    and-int/2addr p1, p2

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BackKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 12
    .line 13
    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    .line 14
    .line 15
    const/4 p3, -0x1

    .line 16
    invoke-virtual {p1, p0, p2, p3}, Lcom/android/server/policy/PhoneWindowManagerExt;->injectionKeyEvent(III)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
