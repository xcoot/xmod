.class public abstract Lcom/android/server/inputmethod/InputMethodSettingsRepository;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sPerUserMap:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->sPerUserMap:Landroid/util/SparseArray;

    .line 8
    return-void
.end method

.method public static get(I)Lcom/android/server/inputmethod/InputMethodSettings;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->sPerUserMap:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/inputmethod/InputMethodSettings;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v0, Lcom/android/server/inputmethod/InputMethodSettings;

    .line 14
    new-instance v1, Lcom/android/server/inputmethod/InputMethodMap;

    .line 16
    sget-object v2, Lcom/android/server/inputmethod/InputMethodMap;->EMPTY_MAP:Landroid/util/ArrayMap;

    .line 18
    invoke-direct {v1, v2}, Lcom/android/server/inputmethod/InputMethodMap;-><init>(Landroid/util/ArrayMap;)V

    .line 21
    invoke-direct {v0, v1, p0}, Lcom/android/server/inputmethod/InputMethodSettings;-><init>(Lcom/android/server/inputmethod/InputMethodMap;I)V

    .line 24
    return-object v0
.end method

.method public static put(ILcom/android/server/inputmethod/InputMethodSettings;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->sPerUserMap:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    return-void
.end method
