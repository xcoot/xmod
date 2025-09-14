.class public final Lcom/android/server/devicepolicy/RecursiveStringArrayResourceResolver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/RecursiveStringArrayResourceResolver;->mResources:Landroid/content/res/Resources;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final resolve(ILjava/lang/String;Ljava/util/Collection;)Ljava/util/Set;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/RecursiveStringArrayResourceResolver;->mResources:Landroid/content/res/Resources;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    new-instance p3, Ljava/util/HashSet;

    .line 13
    .line 14
    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    .line 15
    .line 16
    .line 17
    array-length v1, p1

    .line 18
    const/4 v2, 0x0

    .line 19
    move v3, v2

    .line 20
    :goto_0
    if-ge v3, v1, :cond_5

    .line 21
    .line 22
    aget-object v4, p1, v3

    .line 23
    .line 24
    const-string v5, "#import:"

    .line 25
    .line 26
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-eqz v5, :cond_0

    .line 31
    .line 32
    const/16 v5, 0x8

    .line 33
    .line 34
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const/4 v5, 0x0

    .line 40
    :goto_1
    if-nez v5, :cond_1

    .line 41
    .line 42
    invoke-virtual {p3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-nez v4, :cond_4

    .line 51
    .line 52
    const-string v4, "/"

    .line 53
    .line 54
    const/4 v6, 0x2

    .line 55
    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    aget-object v5, v4, v2

    .line 60
    .line 61
    const/4 v6, 0x1

    .line 62
    aget-object v4, v4, v6

    .line 63
    .line 64
    const-string v6, "."

    .line 65
    .line 66
    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-eqz v6, :cond_2

    .line 71
    .line 72
    move-object v5, p2

    .line 73
    :cond_2
    iget-object v6, p0, Lcom/android/server/devicepolicy/RecursiveStringArrayResourceResolver;->mResources:Landroid/content/res/Resources;

    .line 74
    .line 75
    const-string v7, "array"

    .line 76
    .line 77
    invoke-virtual {v6, v4, v7, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-eqz v6, :cond_3

    .line 82
    .line 83
    invoke-virtual {p0, v6, v5, v0}, Lcom/android/server/devicepolicy/RecursiveStringArrayResourceResolver;->resolve(ILjava/lang/String;Ljava/util/Collection;)Ljava/util/Set;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 88
    .line 89
    .line 90
    invoke-virtual {p3, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_3
    new-instance p0, Landroid/content/res/Resources$NotFoundException;

    .line 95
    .line 96
    const-string p1, ":array/"

    .line 97
    .line 98
    invoke-static {v5, p1, v4}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-direct {p0, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p0

    .line 106
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_5
    return-object p3
.end method
