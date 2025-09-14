.class public Lcom/android/server/pm/PackageManagerTracedLock$RawLock;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field private final mLockName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerTracedLock$RawLock;->mLockName:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method
