.class public final Lcom/android/server/inputmethod/InputMethodSettings;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final INVALID_SUBTYPE_HASHCODE_STR:Ljava/lang/String;


# instance fields
.field public final mMethodList:Ljava/util/List;

.field public final mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

.field public final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    sput-object v0, Lcom/android/server/inputmethod/InputMethodSettings;->INVALID_SUBTYPE_HASHCODE_STR:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodMap;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodMap;->mMap:Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodList:Ljava/util/List;

    .line 17
    .line 18
    iput p2, p0, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    .line 19
    .line 20
    return-void
.end method

.method public static updateEnabledImeString(Ljava/lang/String;Ljava/lang/String;Landroid/util/IntArray;)Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    .line 2
    .line 3
    const/16 v1, 0x3a

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 6
    .line 7
    .line 8
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    .line 9
    .line 10
    const/16 v3, 0x3b

    .line 11
    .line 12
    invoke-direct {v2, v3}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 13
    .line 14
    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    move v5, p0

    .line 25
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-eqz v6, :cond_4

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    invoke-virtual {v2, v6}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    if-eqz v7, :cond_0

    .line 43
    .line 44
    if-eqz v5, :cond_1

    .line 45
    .line 46
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_2

    .line 58
    .line 59
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    move v5, p0

    .line 63
    :goto_1
    invoke-virtual {p2}, Landroid/util/IntArray;->size()I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-ge v5, v6, :cond_3

    .line 68
    .line 69
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, v5}, Landroid/util/IntArray;->get(I)I

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    add-int/lit8 v5, v5, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    :cond_3
    const/4 v5, 0x1

    .line 86
    goto :goto_0

    .line 87
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    return-object p0
.end method


# virtual methods
.method public final buildAndPutEnabledInputMethodsStrRemovingId(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    move v3, v2

    .line 5
    :goto_0
    move-object v4, p2

    .line 6
    check-cast v4, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v5

    .line 12
    if-ge v1, v5, :cond_3

    .line 13
    .line 14
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    check-cast v4, Landroid/util/Pair;

    .line 19
    .line 20
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v5, Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    const/4 v6, 0x1

    .line 29
    if-eqz v5, :cond_0

    .line 30
    .line 31
    move v2, v6

    .line 32
    goto :goto_3

    .line 33
    :cond_0
    if-eqz v3, :cond_1

    .line 34
    .line 35
    const/16 v5, 0x3a

    .line 36
    .line 37
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move v3, v6

    .line 42
    :goto_1
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v5, Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    move v5, v0

    .line 50
    :goto_2
    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v6, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-ge v5, v6, :cond_2

    .line 59
    .line 60
    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v6, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    check-cast v6, Ljava/lang/String;

    .line 69
    .line 70
    const/16 v7, 0x3b

    .line 71
    .line 72
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    add-int/lit8 v5, v5, 0x1

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    if-eqz v2, :cond_4

    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodSettings;->putEnabledInputMethodsStr(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_4
    return v2
.end method

.method public final getCurrentInputMethodSubtypeForNonCurrentUsers()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 10
    .line 11
    invoke-virtual {v2, v0}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_6

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget v2, p0, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    .line 25
    .line 26
    const-string/jumbo v3, "selected_input_method_subtype"

    .line 27
    .line 28
    .line 29
    const/4 v4, -0x1

    .line 30
    invoke-static {v4, v2, v3}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->getInt(IILjava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eq v2, v4, :cond_2

    .line 35
    .line 36
    invoke-static {v0, v2}, Lcom/android/server/inputmethod/SubtypeUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-ltz v2, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :cond_2
    const/4 v2, 0x1

    .line 48
    invoke-virtual {p0, v0, v2}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    return-object v1

    .line 59
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    const/4 v3, 0x0

    .line 64
    if-ne v0, v2, :cond_4

    .line 65
    .line 66
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    check-cast p0, Landroid/view/inputmethod/InputMethodSubtype;

    .line 71
    .line 72
    return-object p0

    .line 73
    :cond_4
    invoke-static {}, Lcom/android/server/inputmethod/SystemLocaleWrapper;->get()Landroid/os/LocaleList;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const-string/jumbo v2, "keyboard"

    .line 86
    .line 87
    .line 88
    invoke-static {v2, v0, p0}, Lcom/android/server/inputmethod/SubtypeUtils;->findLastResortApplicableSubtype(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/view/inputmethod/InputMethodSubtype;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    if-eqz v2, :cond_5

    .line 93
    .line 94
    return-object v2

    .line 95
    :cond_5
    invoke-static {v1, v0, p0}, Lcom/android/server/inputmethod/SubtypeUtils;->findLastResortApplicableSubtype(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/view/inputmethod/InputMethodSubtype;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    return-object p0

    .line 100
    :cond_6
    :goto_0
    return-object v1
.end method

.method public final getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodsAndSubtypeList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    move-object v3, v0

    .line 12
    check-cast v3, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-ge v2, v4, :cond_2

    .line 19
    .line 20
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Landroid/util/Pair;

    .line 25
    .line 26
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v3, Ljava/lang/String;

    .line 29
    .line 30
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 31
    .line 32
    invoke-virtual {v4, v3}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->isVrOnly()Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-nez v4, :cond_1

    .line 43
    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_1

    .line 51
    .line 52
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    return-object v1
.end method

.method public final getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodsAndSubtypeList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    if-eqz p1, :cond_3

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v2

    .line 14
    :goto_0
    move-object v4, v0

    .line 15
    check-cast v4, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    if-ge v3, v5, :cond_3

    .line 22
    .line 23
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Landroid/util/Pair;

    .line 28
    .line 29
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v5, Ljava/lang/String;

    .line 32
    .line 33
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 34
    .line 35
    invoke-virtual {v6, v5}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    if-eqz v5, :cond_2

    .line 40
    .line 41
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-eqz v6, :cond_2

    .line 54
    .line 55
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    move v0, v2

    .line 60
    :goto_1
    if-ge v0, p0, :cond_3

    .line 61
    .line 62
    invoke-virtual {v5, v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    move v6, v2

    .line 67
    :goto_2
    iget-object v7, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v7, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    if-ge v6, v7, :cond_1

    .line 76
    .line 77
    iget-object v7, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v7, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    check-cast v7, Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    if-eqz v7, :cond_0

    .line 100
    .line 101
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_3
    if-eqz p2, :cond_4

    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    if-eqz p0, :cond_4

    .line 120
    .line 121
    invoke-static {}, Lcom/android/server/inputmethod/SystemLocaleWrapper;->get()Landroid/os/LocaleList;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-static {p0, p1}, Lcom/android/server/inputmethod/SubtypeUtils;->getImplicitlyApplicableSubtypes(Landroid/os/LocaleList;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    :cond_4
    invoke-static {p1, v1}, Landroid/view/inputmethod/InputMethodSubtype;->sort(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List;)Ljava/util/List;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    return-object p0
.end method

.method public final getEnabledInputMethodsAndSubtypeList()Ljava/util/List;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodsStr()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    .line 6
    .line 7
    const/16 v1, 0x3a

    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Landroid/text/TextUtils$SimpleStringSplitter;

    .line 13
    .line 14
    const/16 v2, 0x3b

    .line 15
    .line 16
    invoke-direct {v1, v2}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 17
    .line 18
    .line 19
    new-instance v2, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    return-object v2

    .line 31
    :cond_0
    invoke-virtual {v0, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-eqz p0, :cond_3

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {v1, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_1

    .line 52
    .line 53
    new-instance p0, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    :goto_1
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_2

    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    new-instance v4, Landroid/util/Pair;

    .line 77
    .line 78
    invoke-direct {v4, v3, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    return-object v2
.end method

.method public final getEnabledInputMethodsStr()Ljava/lang/String;
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    .line 2
    .line 3
    const-string/jumbo v0, "enabled_input_methods"

    .line 4
    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    invoke-static {v0, v1, p0}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getLastSubtypeForInputMethodInternal(Ljava/lang/String;)Landroid/util/Pair;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_3

    .line 7
    .line 8
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v2, Ljava/lang/CharSequence;

    .line 11
    .line 12
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_3

    .line 17
    .line 18
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v2, Ljava/lang/CharSequence;

    .line 21
    .line 22
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v2, Ljava/lang/String;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 34
    .line 35
    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    if-nez p0, :cond_1

    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_1
    :try_start_0
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v1, Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-static {p0, v1}, Lcom/android/server/inputmethod/SubtypeUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-ltz v1, :cond_3

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-lt v1, v2, :cond_2

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    .line 64
    .line 65
    .line 66
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    return-object p0

    .line 68
    :catch_0
    :cond_3
    :goto_0
    return-object v0
.end method

.method public final getLastSubtypeForInputMethodInternal(Ljava/lang/String;)Landroid/util/Pair;
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodsAndSubtypeList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodSettings;->loadInputMethodAndSubtypeHistory()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    :goto_0
    move-object v4, v1

    .line 12
    check-cast v4, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    const/4 v6, 0x0

    .line 19
    if-ge v3, v5, :cond_8

    .line 20
    .line 21
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Landroid/util/Pair;

    .line 26
    .line 27
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v5, Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    if-nez v7, :cond_0

    .line 36
    .line 37
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-eqz v7, :cond_7

    .line 42
    .line 43
    :cond_0
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v4, Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {}, Lcom/android/server/inputmethod/SystemLocaleWrapper;->get()Landroid/os/LocaleList;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    move v8, v2

    .line 52
    :goto_1
    move-object v9, v0

    .line 53
    check-cast v9, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 56
    .line 57
    .line 58
    move-result v10

    .line 59
    if-ge v8, v10, :cond_6

    .line 60
    .line 61
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    check-cast v9, Landroid/util/Pair;

    .line 66
    .line 67
    iget-object v10, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v10, Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v10

    .line 75
    if-eqz v10, :cond_5

    .line 76
    .line 77
    iget-object v6, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v6, Ljava/util/ArrayList;

    .line 80
    .line 81
    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 82
    .line 83
    invoke-virtual {v8, v5}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    sget-object v10, Lcom/android/server/inputmethod/InputMethodSettings;->INVALID_SUBTYPE_HASHCODE_STR:Ljava/lang/String;

    .line 92
    .line 93
    if-eqz v9, :cond_2

    .line 94
    .line 95
    if-eqz v8, :cond_3

    .line 96
    .line 97
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    if-lez v6, :cond_3

    .line 102
    .line 103
    invoke-static {v7, v8}, Lcom/android/server/inputmethod/SubtypeUtils;->getImplicitlyApplicableSubtypes(Landroid/os/LocaleList;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    move v8, v2

    .line 112
    :goto_2
    if-ge v8, v7, :cond_3

    .line 113
    .line 114
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v9

    .line 118
    check-cast v9, Landroid/view/inputmethod/InputMethodSubtype;

    .line 119
    .line 120
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    .line 121
    .line 122
    .line 123
    move-result v9

    .line 124
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v9

    .line 128
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v9

    .line 132
    if-eqz v9, :cond_1

    .line 133
    .line 134
    move-object v6, v4

    .line 135
    goto :goto_4

    .line 136
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_2
    move v7, v2

    .line 140
    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 141
    .line 142
    .line 143
    move-result v9

    .line 144
    if-ge v7, v9, :cond_3

    .line 145
    .line 146
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v9

    .line 150
    check-cast v9, Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v11

    .line 156
    if-eqz v11, :cond_4

    .line 157
    .line 158
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    invoke-static {v8, v4}, Lcom/android/server/inputmethod/SubtypeUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    .line 163
    .line 164
    .line 165
    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    const/4 v6, -0x1

    .line 167
    if-eq v4, v6, :cond_3

    .line 168
    .line 169
    move-object v6, v9

    .line 170
    goto :goto_4

    .line 171
    :catch_0
    :cond_3
    move-object v6, v10

    .line 172
    goto :goto_4

    .line 173
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_5
    add-int/lit8 v8, v8, 0x1

    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_6
    :goto_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    if-nez v4, :cond_7

    .line 184
    .line 185
    new-instance p0, Landroid/util/Pair;

    .line 186
    .line 187
    invoke-direct {p0, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    return-object p0

    .line 191
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 192
    .line 193
    goto/16 :goto_0

    .line 194
    .line 195
    :cond_8
    return-object v6
.end method

.method public final getNewAdditionalSubtypeMap(Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/server/inputmethod/AdditionalSubtypeMap;Landroid/content/pm/PackageManagerInternal;I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    return-object p3

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v5

    .line 14
    const-wide/16 v3, 0x0

    .line 15
    .line 16
    invoke-static {p5}, Landroid/os/UserHandle;->getUserId(I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    move-object v0, p4

    .line 21
    move v1, p5

    .line 22
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManagerInternal;->isSameApp(IIJLjava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    return-object p3

    .line 29
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_4

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    iget-object p1, p3, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->mMap:Landroid/util/ArrayMap;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_5

    .line 46
    .line 47
    iget-object p1, p3, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->mMap:Landroid/util/ArrayMap;

    .line 48
    .line 49
    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-nez p1, :cond_2

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    new-instance p1, Landroid/util/ArrayMap;

    .line 57
    .line 58
    iget-object p2, p3, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->mMap:Landroid/util/ArrayMap;

    .line 59
    .line 60
    invoke-direct {p1, p2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    if-eqz p0, :cond_3

    .line 71
    .line 72
    sget-object p0, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->EMPTY_MAP:Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    .line 73
    .line 74
    :goto_0
    move-object p3, p0

    .line 75
    goto :goto_1

    .line 76
    :cond_3
    new-instance p0, Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    .line 77
    .line 78
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/AdditionalSubtypeMap;-><init>(Landroid/util/ArrayMap;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_4
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    new-instance p1, Landroid/util/ArrayMap;

    .line 90
    .line 91
    iget-object p3, p3, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->mMap:Landroid/util/ArrayMap;

    .line 92
    .line 93
    invoke-direct {p1, p3}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, p0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    new-instance p3, Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    .line 100
    .line 101
    invoke-direct {p3, p1}, Lcom/android/server/inputmethod/AdditionalSubtypeMap;-><init>(Landroid/util/ArrayMap;)V

    .line 102
    .line 103
    .line 104
    :cond_5
    :goto_1
    return-object p3
.end method

.method public final getSelectedInputMethod()Ljava/lang/String;
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    .line 2
    .line 3
    const-string/jumbo v0, "default_input_method"

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1, p0}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getSelectedInputMethodSubtypeId(Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, -0x1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    .line 12
    .line 13
    const-string/jumbo v1, "selected_input_method_subtype"

    .line 14
    .line 15
    .line 16
    invoke-static {v0, p0, v1}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->getInt(IILjava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    invoke-static {p1, p0}, Lcom/android/server/inputmethod/SubtypeUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0
.end method

.method public final isShowImeWithHardKeyboardEnabled()Z
    .locals 4

    .line 1
    const-string/jumbo v0, "ro.build.characteristics"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string/jumbo v3, "tablet"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    move v0, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v0, v2

    .line 24
    :goto_0
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    .line 25
    .line 26
    const-string/jumbo v3, "show_ime_with_hard_keyboard"

    .line 27
    .line 28
    .line 29
    if-nez p0, :cond_2

    .line 30
    .line 31
    invoke-static {v0, v1, v3}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->getInt(IILjava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-ne p0, v2, :cond_1

    .line 36
    .line 37
    move v1, v2

    .line 38
    :cond_1
    return v1

    .line 39
    :cond_2
    invoke-static {v1, p0, v3}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->getInt(IILjava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-ne p0, v2, :cond_3

    .line 44
    .line 45
    move v1, v2

    .line 46
    :cond_3
    return v1
.end method

.method public final isShowKeyboardButton()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    .line 3
    .line 4
    const-string/jumbo v1, "show_keyboard_button"

    .line 5
    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-nez p0, :cond_1

    .line 9
    .line 10
    invoke-static {v2, v0, v1}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->getInt(IILjava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-ne p0, v2, :cond_0

    .line 15
    .line 16
    move v0, v2

    .line 17
    :cond_0
    return v0

    .line 18
    :cond_1
    invoke-static {v2, p0, v1}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->getInt(IILjava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-ne p0, v2, :cond_2

    .line 23
    .line 24
    move v0, v2

    .line 25
    :cond_2
    return v0
.end method

.method public final loadInputMethodAndSubtypeHistory()Ljava/util/List;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "input_methods_subtype_history"

    .line 7
    .line 8
    .line 9
    const-string v2, ""

    .line 10
    .line 11
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    .line 12
    .line 13
    invoke-static {v1, v2, p0}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_0
    new-instance v1, Landroid/text/TextUtils$SimpleStringSplitter;

    .line 25
    .line 26
    const/16 v2, 0x3a

    .line 27
    .line 28
    invoke-direct {v1, v2}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 29
    .line 30
    .line 31
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    .line 32
    .line 33
    const/16 v3, 0x3b

    .line 34
    .line 35
    invoke-direct {v2, v3}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-eqz p0, :cond_3

    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {v2, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-eqz p0, :cond_1

    .line 59
    .line 60
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_2

    .line 69
    .line 70
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    sget-object v3, Lcom/android/server/inputmethod/InputMethodSettings;->INVALID_SUBTYPE_HASHCODE_STR:Ljava/lang/String;

    .line 76
    .line 77
    :goto_1
    new-instance v4, Landroid/util/Pair;

    .line 78
    .line 79
    invoke-direct {v4, p0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    return-object v0
.end method

.method public final putEnabledInputMethodsStr(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string/jumbo v1, "enabled_input_methods"

    .line 6
    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, v1, p1}, Lcom/android/server/inputmethod/InputMethodSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/android/server/inputmethod/InputMethodSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public final putSelectedDefaultDeviceInputMethod(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "default_device_input_method"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/android/server/inputmethod/InputMethodSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final putSelectedInputMethod(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "putSelectedInputMethodStr: "

    .line 2
    .line 3
    .line 4
    const-string v1, ", userId : "

    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ", callers : "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const/16 v1, 0xa

    .line 21
    .line 22
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "InputMethodSettings"

    .line 34
    .line 35
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    const-string/jumbo v0, "default_input_method"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0, p1}, Lcom/android/server/inputmethod/InputMethodSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->get(I)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1, p2}, Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final setEnabledInputMethodSubtypes(Ljava/lang/String;[I)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    new-instance v1, Landroid/util/IntArray;

    .line 12
    .line 13
    array-length v2, p2

    .line 14
    invoke-direct {v1, v2}, Landroid/util/IntArray;-><init>(I)V

    .line 15
    .line 16
    .line 17
    array-length v2, p2

    .line 18
    move v3, v0

    .line 19
    :goto_0
    if-ge v3, v2, :cond_4

    .line 20
    .line 21
    aget v4, p2, v3

    .line 22
    .line 23
    const/4 v5, -0x1

    .line 24
    if-ne v4, v5, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    invoke-static {p1, v4}, Lcom/android/server/inputmethod/SubtypeUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    if-eq v6, v5, :cond_3

    .line 32
    .line 33
    invoke-virtual {v1, v4}, Landroid/util/IntArray;->indexOf(I)I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-ltz v5, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    invoke-virtual {v1, v4}, Landroid/util/IntArray;->add(I)V

    .line 41
    .line 42
    .line 43
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodsStr()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {p2, p1, v1}, Lcom/android/server/inputmethod/InputMethodSettings;->updateEnabledImeString(Ljava/lang/String;Ljava/lang/String;Landroid/util/IntArray;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-eqz p2, :cond_5

    .line 63
    .line 64
    return v0

    .line 65
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodSettings;->putEnabledInputMethodsStr(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const/4 p0, 0x1

    .line 69
    return p0
.end method

.method public final setShowImeWithHardKeyboard(Z)V
    .locals 2

    .line 1
    const-string/jumbo v0, "setShowImeWithHardKeyboard show = "

    .line 2
    .line 3
    .line 4
    const-string v1, ", callers= "

    .line 5
    .line 6
    invoke-static {v0, v1, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x3

    .line 11
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "InputMethodSettings"

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    .line 28
    .line 29
    invoke-static {p0}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->get(I)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string/jumbo v0, "show_ime_with_hard_keyboard"

    .line 34
    .line 35
    .line 36
    invoke-interface {p0, p1, v0}, Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;->putInt(ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
