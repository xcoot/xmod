.class public final synthetic Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0

    .line 23
    :pswitch_0
    check-cast p1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
