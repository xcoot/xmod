.class public final Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final parameterValidator:Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;

.field public final validDestinations:I

.field public final validSources:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;->parameterValidator:Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;

    .line 6
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;->validSources:I

    .line 8
    iput p3, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;->validDestinations:I

    .line 10
    return-void
.end method
