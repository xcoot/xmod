.class public interface abstract Lvendor/samsung/hardware/biometrics/face/ISehSession;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, 0x24

    .line 2
    .line 3
    const/16 v1, 0x2e

    .line 4
    .line 5
    const-string/jumbo v2, "vendor$samsung$hardware$biometrics$face$ISehSession"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lvendor/samsung/hardware/biometrics/face/ISehSession;->DESCRIPTOR:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method
