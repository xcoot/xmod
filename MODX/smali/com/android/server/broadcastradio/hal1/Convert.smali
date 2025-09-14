.class public final Lcom/android/server/broadcastradio/hal1/Convert;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final TAG:Ljava/lang/String; = "BcRadio1Srv.Convert"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static stringMapToNative(Ljava/util/Map;)[[Ljava/lang/String;
    .locals 8

    .line 1
    const-class v0, Ljava/lang/String;

    .line 3
    const-string v1, "BcRadio1Srv.Convert"

    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    if-nez p0, :cond_0

    .line 10
    const-string/jumbo p0, "map is null, returning zero-elements array"

    .line 13
    invoke-static {v1, p0}, Lcom/android/server/utils/Slogf;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    new-array p0, v2, [I

    .line 18
    aput v4, p0, v3

    .line 20
    aput v4, p0, v4

    .line 22
    invoke-static {v0, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 25
    move-result-object p0

    .line 26
    check-cast p0, [[Ljava/lang/String;

    .line 28
    return-object p0

    .line 29
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0}, Ljava/util/Set;->size()I

    .line 36
    move-result v5

    .line 37
    new-array v6, v2, [I

    .line 39
    aput v2, v6, v3

    .line 41
    aput v5, v6, v4

    .line 43
    invoke-static {v0, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 46
    move-result-object v0

    .line 47
    check-cast v0, [[Ljava/lang/String;

    .line 49
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 52
    move-result-object p0

    .line 53
    move v2, v4

    .line 54
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    move-result v5

    .line 58
    if-eqz v5, :cond_1

    .line 60
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    move-result-object v5

    .line 64
    check-cast v5, Ljava/util/Map$Entry;

    .line 66
    aget-object v6, v0, v2

    .line 68
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 71
    move-result-object v7

    .line 72
    check-cast v7, Ljava/lang/String;

    .line 74
    aput-object v7, v6, v4

    .line 76
    aget-object v6, v0, v2

    .line 78
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 81
    move-result-object v5

    .line 82
    check-cast v5, Ljava/lang/String;

    .line 84
    aput-object v5, v6, v3

    .line 86
    add-int/lit8 v2, v2, 0x1

    .line 88
    goto :goto_0

    .line 89
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 91
    const-string/jumbo v3, "converted "

    .line 94
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    const-string v2, " element(s)"

    .line 102
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object p0

    .line 109
    invoke-static {v1, p0}, Lcom/android/server/utils/Slogf;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-object v0
.end method
