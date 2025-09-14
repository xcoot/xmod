.class Lcom/android/server/knox/dar/DarDatabaseCache$1;
.super Ljava/util/LinkedHashMap;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field private static final serialVersionUID:J = 0x5dbe90b824986878L


# instance fields
.field final synthetic this$0:Lcom/android/server/knox/dar/DarDatabaseCache;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/dar/DarDatabaseCache;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/server/knox/dar/DarDatabaseCache$1;->this$0:Lcom/android/server/knox/dar/DarDatabaseCache;

    .line 2
    .line 3
    const/16 p1, 0xa

    .line 4
    .line 5
    const/high16 v0, 0x3f400000    # 0.75f

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {p0, p1, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/16 p1, 0x1e

    .line 6
    .line 7
    if-lt p0, p1, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method
