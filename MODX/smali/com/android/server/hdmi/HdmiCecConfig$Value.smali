.class public final Lcom/android/server/hdmi/HdmiCecConfig$Value;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mIntValue:Ljava/lang/Integer;

.field public final mStringValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig$Value;->mStringValue:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecConfig$Value;->mIntValue:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecConfig$Value;->mStringValue:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecConfig$Value;->mIntValue:Ljava/lang/Integer;

    return-void
.end method
