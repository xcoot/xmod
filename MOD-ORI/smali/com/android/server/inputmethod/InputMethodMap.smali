.class public final Lcom/android/server/inputmethod/InputMethodMap;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final EMPTY_MAP:Landroid/util/ArrayMap;


# instance fields
.field public final mMap:Landroid/util/ArrayMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/inputmethod/InputMethodMap;->EMPTY_MAP:Landroid/util/ArrayMap;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/util/ArrayMap;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-object p1, Lcom/android/server/inputmethod/InputMethodMap;->EMPTY_MAP:Landroid/util/ArrayMap;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 16
    .line 17
    .line 18
    move-object p1, v0

    .line 19
    :goto_0
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodMap;->mMap:Landroid/util/ArrayMap;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final applyAdditionalSubtypes(Lcom/android/server/inputmethod/AdditionalSubtypeMap;)Lcom/android/server/inputmethod/InputMethodMap;
    .locals 7

    .line 1
    iget-object v0, p1, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->mMap:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMap;->mMap:Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    new-instance v1, Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    move v3, v2

    .line 23
    :goto_0
    if-ge v2, v0, :cond_3

    .line 24
    .line 25
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodMap;->mMap:Landroid/util/ArrayMap;

    .line 26
    .line 27
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 32
    .line 33
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    iget-object v6, p1, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->mMap:Landroid/util/ArrayMap;

    .line 38
    .line 39
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    check-cast v5, Ljava/util/List;

    .line 44
    .line 45
    if-eqz v5, :cond_2

    .line 46
    .line 47
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-eqz v6, :cond_1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    new-instance v6, Landroid/view/inputmethod/InputMethodInfo;

    .line 59
    .line 60
    invoke-direct {v6, v4, v5}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    const/4 v3, 0x1

    .line 67
    goto :goto_2

    .line 68
    :cond_2
    :goto_1
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-virtual {v1, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    if-eqz v3, :cond_4

    .line 79
    .line 80
    new-instance p0, Lcom/android/server/inputmethod/InputMethodMap;

    .line 81
    .line 82
    invoke-direct {p0, v1}, Lcom/android/server/inputmethod/InputMethodMap;-><init>(Landroid/util/ArrayMap;)V

    .line 83
    .line 84
    .line 85
    :cond_4
    return-object p0
.end method

.method public final get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodMap;->mMap:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/view/inputmethod/InputMethodInfo;

    .line 8
    .line 9
    return-object p0
.end method
