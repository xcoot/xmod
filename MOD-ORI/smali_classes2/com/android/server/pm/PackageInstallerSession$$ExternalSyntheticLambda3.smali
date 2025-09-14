.class public final synthetic Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 7
    .line 8
    check-cast p1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->isApexSession()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :pswitch_0
    check-cast p1, Lcom/android/server/pm/PackageInstallerSession;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    xor-int/lit8 p0, p0, 0x1

    .line 22
    .line 23
    return p0

    .line 24
    :pswitch_1
    check-cast p1, Lcom/android/server/pm/PackageInstallerSession;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
