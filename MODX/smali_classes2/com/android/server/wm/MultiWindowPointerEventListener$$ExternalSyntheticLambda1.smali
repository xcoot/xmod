.class public final synthetic Lcom/android/server/wm/MultiWindowPointerEventListener$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/MultiWindowPointerEventListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiWindowPointerEventListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/MultiWindowPointerEventListener;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/MultiWindowPointerEventListener;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "MultiWindowPointerEventListener"

    .line 7
    .line 8
    const-string v1, "Hide Ime"

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 18
    .line 19
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 20
    .line 21
    const/16 p0, 0x3f

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->hideAllInputMethods(I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
