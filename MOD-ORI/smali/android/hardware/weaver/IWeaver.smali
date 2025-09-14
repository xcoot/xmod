.class public interface abstract Landroid/hardware/weaver/IWeaver;
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
    const-string v2, "android$hardware$weaver$IWeaver"

    .line 6
    .line 7
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Landroid/hardware/weaver/IWeaver;->DESCRIPTOR:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public abstract getConfig()Landroid/hardware/weaver/WeaverConfig;
.end method

.method public abstract getInterfaceVersion()I
.end method

.method public abstract read(I[B)Landroid/hardware/weaver/WeaverReadResponse;
.end method

.method public abstract write(I[B[B)V
.end method
