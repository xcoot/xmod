.class public Lcom/android/server/updates/LangIdInstallReceiver;
.super Lcom/android/server/updates/ConfigUpdateInstallReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    const-string/jumbo v0, "metadata/lang_id"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "version"

    .line 5
    .line 6
    .line 7
    const-string v2, "/data/misc/textclassifier/"

    .line 8
    .line 9
    const-string v3, "lang_id.model"

    .line 10
    .line 11
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final verifyVersion(II)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method
