.class public abstract Lcom/android/server/enterprise/auditlog/zt/ZtEventDataCache;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ZT_EVENT_CACHE:Ljava/util/concurrent/ConcurrentLinkedQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/enterprise/auditlog/zt/ZtEventDataCache;->ZT_EVENT_CACHE:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 8
    return-void
.end method
