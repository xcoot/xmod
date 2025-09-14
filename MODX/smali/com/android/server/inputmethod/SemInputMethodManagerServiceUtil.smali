.class public final Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mKeyguardManager:Landroid/app/KeyguardManager;

.field public final mService:Lcom/android/server/inputmethod/InputMethodManagerService;

.field public mSpenLastUsed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;->mContext:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 8
    return-void
.end method


# virtual methods
.method public final isKeyguardLocked()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;->mContext:Landroid/content/Context;

    .line 7
    const-class v1, Landroid/app/KeyguardManager;

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/app/KeyguardManager;

    .line 15
    iput-object v0, p0, Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 19
    if-eqz p0, :cond_1

    .line 21
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_1

    .line 27
    const/4 p0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    :goto_0
    return p0
.end method
