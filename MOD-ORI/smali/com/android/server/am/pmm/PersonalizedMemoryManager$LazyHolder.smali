.class public abstract Lcom/android/server/am/pmm/PersonalizedMemoryManager$LazyHolder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/pmm/PersonalizedMemoryManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/am/pmm/PersonalizedMemoryManager;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, v0, Lcom/android/server/am/pmm/PersonalizedMemoryManager;->mChangeObserver:Lcom/android/server/am/pmm/PersonalizedMemoryManager$OnDeviceAIChangeObserver;

    .line 8
    .line 9
    sput-object v0, Lcom/android/server/am/pmm/PersonalizedMemoryManager$LazyHolder;->INSTANCE:Lcom/android/server/am/pmm/PersonalizedMemoryManager;

    .line 10
    .line 11
    return-void
.end method
