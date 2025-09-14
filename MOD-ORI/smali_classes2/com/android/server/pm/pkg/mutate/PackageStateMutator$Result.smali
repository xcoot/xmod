.class public final Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final PACKAGES_AND_STATE_CHANGED:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

.field public static final PACKAGES_CHANGED:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

.field public static final STATE_CHANGED:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

.field public static final SUCCESS:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;


# instance fields
.field public final mCommitted:Z

.field public final mPackagesChanged:Z

.field public final mSpecificPackageNull:Z

.field public final mStateChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2, v2, v2}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;-><init>(ZZZZ)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->SUCCESS:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 9
    .line 10
    new-instance v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 11
    .line 12
    invoke-direct {v0, v2, v1, v2, v2}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;-><init>(ZZZZ)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->PACKAGES_CHANGED:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 16
    .line 17
    new-instance v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 18
    .line 19
    invoke-direct {v0, v2, v2, v1, v2}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;-><init>(ZZZZ)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->STATE_CHANGED:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 23
    .line 24
    new-instance v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 25
    .line 26
    invoke-direct {v0, v2, v1, v1, v2}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;-><init>(ZZZZ)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->PACKAGES_AND_STATE_CHANGED:Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 30
    .line 31
    return-void
.end method

.method public constructor <init>(ZZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->mCommitted:Z

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->mPackagesChanged:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->mStateChanged:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->mSpecificPackageNull:Z

    .line 11
    .line 12
    return-void
.end method
