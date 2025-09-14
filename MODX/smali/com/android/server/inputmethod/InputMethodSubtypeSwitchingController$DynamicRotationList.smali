.class public final Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mImeSubtypeList:Ljava/util/List;

.field public final mUsageHistoryOfSubtypeListItemIndex:[I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mImeSubtypeList:Ljava/util/List;

    .line 6
    check-cast p1, Ljava/util/ArrayList;

    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v0

    .line 12
    new-array v0, v0, [I

    .line 14
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mUsageHistoryOfSubtypeListItemIndex:[I

    .line 16
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 19
    move-result p1

    .line 20
    const/4 v0, 0x0

    .line 21
    :goto_0
    if-ge v0, p1, :cond_0

    .line 23
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mUsageHistoryOfSubtypeListItemIndex:[I

    .line 25
    aput v0, v1, v0

    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method


# virtual methods
.method public final getUsageRank(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I
    .locals 6

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    .line 7
    move-result p2

    .line 8
    invoke-static {p1, p2}, Lcom/android/server/inputmethod/SubtypeUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    .line 11
    move-result p2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move p2, v0

    .line 14
    :goto_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mUsageHistoryOfSubtypeListItemIndex:[I

    .line 16
    array-length v2, v1

    .line 17
    const/4 v3, 0x0

    .line 18
    :goto_1
    if-ge v3, v2, :cond_2

    .line 20
    aget v4, v1, v3

    .line 22
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mImeSubtypeList:Ljava/util/List;

    .line 24
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 30
    iget-object v5, v4, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 32
    invoke-virtual {v5, p1}, Landroid/view/inputmethod/InputMethodInfo;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_1

    .line 38
    iget v4, v4, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    .line 40
    if-ne v4, p2, :cond_1

    .line 42
    return v3

    .line 43
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    return v0
.end method
