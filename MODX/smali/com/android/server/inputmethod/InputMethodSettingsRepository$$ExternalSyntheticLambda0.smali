.class public final synthetic Lcom/android/server/inputmethod/InputMethodSettingsRepository$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/UserManagerInternal;

.field public final synthetic f$1:Landroid/os/Handler;

.field public final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/UserManagerInternal;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodSettingsRepository$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/UserManagerInternal;

    .line 6
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodSettingsRepository$$ExternalSyntheticLambda0;->f$1:Landroid/os/Handler;

    .line 8
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodSettingsRepository$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSettingsRepository$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/UserManagerInternal;

    .line 3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodSettingsRepository$$ExternalSyntheticLambda0;->f$1:Landroid/os/Handler;

    .line 5
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodSettingsRepository$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    .line 7
    new-instance v2, Lcom/android/server/inputmethod/InputMethodSettingsRepository$1;

    .line 9
    invoke-direct {v2, v1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository$1;-><init>(Landroid/os/Handler;)V

    .line 12
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserManagerInternal;->addUserLifecycleListener(Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;)V

    .line 15
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    .line 21
    move-result-object v0

    .line 22
    array-length v2, v0

    .line 23
    const/4 v3, 0x0

    .line 24
    move v4, v3

    .line 25
    :goto_0
    if-ge v4, v2, :cond_0

    .line 27
    aget v5, v0, v4

    .line 29
    invoke-static {v5}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->get(I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    .line 32
    move-result-object v6

    .line 33
    invoke-static {p0, v5, v6, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryInputMethodServicesInternal(Landroid/content/Context;ILcom/android/server/inputmethod/AdditionalSubtypeMap;I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 36
    move-result-object v6

    .line 37
    invoke-static {v5, v6}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->put(ILcom/android/server/inputmethod/InputMethodSettings;)V

    .line 40
    add-int/lit8 v4, v4, 0x1

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    monitor-exit v1

    .line 46
    return-void

    .line 47
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw p0
.end method
