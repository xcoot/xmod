.class public final synthetic Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/KeyboardLayoutManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/KeyboardLayoutManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/input/KeyboardLayoutManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/input/KeyboardLayoutManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget v0, p1, Landroid/os/Message;->what:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eq v0, v1, :cond_3

    .line 11
    .line 12
    const/4 p1, 0x2

    .line 13
    if-eq v0, p1, :cond_1

    .line 14
    .line 15
    const/4 p1, 0x3

    .line 16
    if-eq v0, p1, :cond_0

    .line 17
    .line 18
    move v1, v2

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardLayoutManager;->updateKeyboardLayouts()V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    sget-boolean p1, Lcom/android/server/input/KeyboardLayoutManager;->DEBUG:Z

    .line 25
    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    const-string p1, "KeyboardLayoutManager"

    .line 29
    .line 30
    const-string v0, "Reloading keyboard layouts."

    .line 31
    .line 32
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :cond_2
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 36
    .line 37
    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->reloadKeyboardLayouts()V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p1, [I

    .line 44
    .line 45
    array-length v0, p1

    .line 46
    :goto_0
    if-ge v2, v0, :cond_4

    .line 47
    .line 48
    aget v3, p1, v2

    .line 49
    .line 50
    invoke-virtual {p0, v3, v1}, Lcom/android/server/input/KeyboardLayoutManager;->onInputDeviceChangedInternal(IZ)V

    .line 51
    .line 52
    .line 53
    add-int/lit8 v2, v2, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_4
    :goto_1
    return v1
.end method
