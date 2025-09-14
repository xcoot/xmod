.class public final Lcom/android/server/am/CrashDetectionAndOptimization;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final crashPackages:Ljava/util/List;

.field public static final dexOptimizedPackages:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/am/CrashDetectionAndOptimization;->dexOptimizedPackages:Ljava/util/List;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    sput-object v0, Lcom/android/server/am/CrashDetectionAndOptimization;->crashPackages:Ljava/util/List;

    .line 15
    return-void
.end method
