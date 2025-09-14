.class public final Lcom/android/server/am/mars/filter/FilterChainBuilder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public filterChain:Lcom/android/server/am/mars/filter/FilterChain;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/am/mars/filter/FilterChainBuilder;->filterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final add(Lcom/android/server/am/mars/filter/IFilter;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/am/mars/filter/FilterChain;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/am/mars/filter/FilterChainBuilder;->filterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 9
    .line 10
    iput-object v1, v0, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/am/mars/filter/FilterChainBuilder;->filterChain:Lcom/android/server/am/mars/filter/FilterChain;

    .line 13
    .line 14
    return-void
.end method
