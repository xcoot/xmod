.class public final Lcom/android/server/pm/pkg/mutate/PackageStateMutator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sStateChangeSequence:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public final mActiveStateFunction:Ljava/util/function/Function;

.field public final mChangedStates:Landroid/util/ArraySet;

.field public final mDisabledStateFunction:Ljava/util/function/Function;

.field public final mStateWrite:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->sStateChangeSequence:Ljava/util/concurrent/atomic/AtomicLong;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;Ljava/util/function/Function;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->mStateWrite:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->mChangedStates:Landroid/util/ArraySet;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->mActiveStateFunction:Ljava/util/function/Function;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->mDisabledStateFunction:Ljava/util/function/Function;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->mActiveStateFunction:Ljava/util/function/Function;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/android/server/pm/PackageSetting;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->mChangedStates:Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->mStateWrite:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->mState:Lcom/android/server/pm/PackageSetting;

    .line 19
    .line 20
    return-object p0
.end method
