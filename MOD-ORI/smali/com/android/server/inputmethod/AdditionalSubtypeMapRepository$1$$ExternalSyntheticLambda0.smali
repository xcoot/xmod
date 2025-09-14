.class public final synthetic Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$1$$ExternalSyntheticLambda0;->f$0:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$1$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$1$$ExternalSyntheticLambda0;->f$0:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$1$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    .line 4
    .line 5
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    sget-object v2, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sPerUserMap:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->contains(I)Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    invoke-static {v0}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->load(I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-static {p0, v0, v3, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryInputMethodServicesInternal(Landroid/content/Context;ILcom/android/server/inputmethod/AdditionalSubtypeMap;I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {v0, p0}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->put(ILcom/android/server/inputmethod/InputMethodSettings;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    monitor-exit v1

    .line 35
    return-void

    .line 36
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0
.end method
