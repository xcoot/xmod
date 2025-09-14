.class public abstract Lcom/android/server/AccessibilityManagerInternal;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final NOP:Lcom/android/server/AccessibilityManagerInternal$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/AccessibilityManagerInternal$1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/AccessibilityManagerInternal;->NOP:Lcom/android/server/AccessibilityManagerInternal$1;

    .line 7
    .line 8
    return-void
.end method

.method public static get()Lcom/android/server/AccessibilityManagerInternal;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/AccessibilityManagerInternal;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/AccessibilityManagerInternal;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Lcom/android/server/AccessibilityManagerInternal;->NOP:Lcom/android/server/AccessibilityManagerInternal$1;

    .line 13
    .line 14
    :goto_0
    return-object v0
.end method


# virtual methods
.method public abstract bindInput()V
.end method

.method public abstract createImeSession(Landroid/util/ArraySet;)V
.end method

.method public abstract isTouchExplorationEnabled(I)Z
.end method

.method public abstract performSystemAction()V
.end method

.method public abstract setImeSessionEnabled(Landroid/util/SparseArray;Z)V
.end method

.method public abstract startInput(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
.end method

.method public abstract unbindInput()V
.end method
