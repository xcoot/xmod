.class public final Lcom/android/server/input/InputManagerService$6;
.super Landroid/view/IDisplayFoldListener$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$6;->this$0:Lcom/android/server/input/InputManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/IDisplayFoldListener$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDisplayFoldChanged(IZ)V
    .locals 1

    .line 1
    const-string/jumbo p1, "onDisplayFoldChanged: folded = "

    .line 2
    .line 3
    .line 4
    const-string v0, "InputManager"

    .line 5
    .line 6
    invoke-static {p1, v0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$6;->this$0:Lcom/android/server/input/InputManagerService;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 12
    .line 13
    invoke-interface {p0, p2}, Lcom/android/server/input/NativeInputManagerService;->setDisplayFolded(Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
