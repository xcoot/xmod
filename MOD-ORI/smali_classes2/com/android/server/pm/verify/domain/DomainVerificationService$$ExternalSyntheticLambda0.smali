.class public final synthetic Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/Computer;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/Computer;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/Computer;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/Computer;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    .line 7
    check-cast p2, Ljava/lang/String;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-wide/16 v2, -0x1

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    move-wide v4, v2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-interface {v1, p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTimeMillis()J

    .line 28
    .line 29
    .line 30
    move-result-wide v4

    .line 31
    :goto_0
    if-nez v0, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-interface {v0, p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTimeMillis()J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    :goto_1
    cmp-long p0, v4, v2

    .line 43
    .line 44
    if-eqz p0, :cond_2

    .line 45
    .line 46
    sub-long/2addr v4, v2

    .line 47
    long-to-int p0, v4

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    :goto_2
    return p0
.end method
