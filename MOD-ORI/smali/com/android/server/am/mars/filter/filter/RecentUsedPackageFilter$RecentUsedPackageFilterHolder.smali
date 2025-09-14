.class public abstract Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter$RecentUsedPackageFilterHolder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    const-string/jumbo v2, "com.codoon.gps"

    .line 9
    .line 10
    .line 11
    const-string/jumbo v3, "com.traffic.panda"

    .line 12
    .line 13
    .line 14
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    .line 24
    .line 25
    iput-object v1, v0, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;->RogueApp:Ljava/util/ArrayList;

    .line 26
    .line 27
    sput-object v0, Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter$RecentUsedPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/RecentUsedPackageFilter;

    .line 28
    .line 29
    return-void
.end method
