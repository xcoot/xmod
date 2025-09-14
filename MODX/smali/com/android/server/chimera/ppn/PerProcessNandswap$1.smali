.class Lcom/android/server/chimera/ppn/PerProcessNandswap$1;
.super Ljava/util/LinkedHashMap;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field final synthetic this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/ppn/PerProcessNandswap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$1;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 3
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    .line 4
    move-result p0

    .line 5
    const/16 p1, 0x64

    .line 7
    if-le p0, p1, :cond_0

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
